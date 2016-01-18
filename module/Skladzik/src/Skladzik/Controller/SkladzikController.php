<?php
namespace Skladzik\Controller;

 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;
 use Skladzik\Model\Skladzik; 
 use Skladzik\Form\SkladzikForm;

 class SkladzikController extends AbstractActionController
 {
     protected $skladzikTable;
     public function indexAction()
     {
         return new ViewModel(array(
         'skladziks' => $this->getSkladzikTable()->fetchAll(),
         ));
     }
     public function booksAction()
     {
         return new ViewModel(array(
         'skladziks' => $this->getSkladzikTable()->fetchAll_books(),
         ));
     }
     public function gamesAction()
     {
         return new ViewModel(array(
         'skladziks' => $this->getSkladzikTable()->fetchAll_games(),
         ));
     }
     public function stuffAction()
     {
         return new ViewModel(array(
         'skladziks' => $this->getSkladzikTable()->fetchAll_stuff(),
         ));
     }
     public function getSkladzikTable()
     {
         if (!$this->skladzikTable) {
             $sm = $this->getServiceLocator();
             $this->skladzikTable = $sm->get('Skladzik\Model\SkladzikTable');
         }
         return $this->skladzikTable;
     }
     public function addAction()
     {
         $form = new SkladzikForm();
         $form->get('submit')->setValue('Dodaj');
         
         
         $request = $this->getRequest();
         if ($request->isPost()) {
             $skladzik = new Skladzik();
             $form->setInputFilter($skladzik->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $skladzik->exchangeArray($form->getData());
                 $this->getSkladzikTable()->saveSkladzik($skladzik);
                 return $this->redirect()->toRoute('skladzik');
             }
             //else {echo "Error";}
         }
         return array('form' => $form);
     }

     public function reserveAction()
     {
         $id_przedmiotu = (int) $this->params()->fromRoute('id_artykulu', 0);
         $form = new \Zamowienia\Form\ZamowieniaForm();
         $form->get('submit')->setValue('Dodaj');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $zamowienia = new \Zamowienia\Model\Zamowienia();
             $zamówienia->id_uzytkownika=$this->zfcUserAuthentication()->getIdentity()->getUsername();
             $zamówienia->id_przedmiotu=$id_przedmiotu;
             $zamówienia->status='Oczekujące'; 
             $form->setInputFilter($zamowienia->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) { 
                 $zamowienia->exchangeArray($form->getData());
                 $this->getZamowieniaTable()->saveZamowienia($zamowienia);
                 return $this->redirect()->toRoute('zamowienia',array(
                 'action' => 'indexuser',
                 //'id_przedmiotu' => '1',
             ));
             } 
         }
         return array('form' => $form);
     }
     
     public function editAction()
     {
         $id_przedmiotu = (int) $this->params()->fromRoute('id_przedmiotu', 0);
         if (!$id_przedmiotu) {
             return $this->redirect()->toRoute('skladzik', array(
                 'action' => 'add'
             ));
         }
         
         try {
             $skladzik = $this->getSkladzikTable()->getSkladzik($id_przedmiotu);
         }
         catch (\Exception $ex) {
             return $this->redirect()->toRoute('skladzik', array(
                 'action' => 'index'
             ));
         }
         
         $form  = new SkladzikForm();
         $form->bind($skladzik);
         $form->get('submit')->setAttribute('value', 'Zmień');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $form->setInputFilter($skladzik->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $this->getSkladzikTable()->saveSkladzik($skladzik);
                 return $this->redirect()->toRoute('skladzik');
             }
             //else {echo "Error";
             //$this->form()->getErrorMessages(); 
             //$form->getErrors(); 
             //$form->getErrorMessages();
             
             //}
         }
         return array(
             'id_przedmiotu' => $id_przedmiotu,
             'form' => $form,
         );
     }
 }
