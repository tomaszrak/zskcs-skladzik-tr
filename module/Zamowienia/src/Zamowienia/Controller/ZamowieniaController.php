<?php
namespace Zamowienia\Controller;

 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;
 use Zamowienia\Model\Zamowienia;  
 use Zamowienia\Form\ZamowieniaForm;


 class ZamowieniaController extends AbstractActionController
 {
     protected $zamowieniaTable;
     public function indexrAction() 
     {
         
         return new ViewModel(array(
             'zamowienias' => $this->getZamowieniaTable()->fetchAll_request(),
             
         ));
     }
     public function indexaAction() 
     {
         
         return new ViewModel(array(
             'zamowienias' => $this->getZamowieniaTable()->fetchAll_accepted(),
             
         ));
     }
     public function indexvAction() 
     {
         
         return new ViewModel(array(
             'zamowienias' => $this->getZamowieniaTable()->fetchAll_archives(),
             
         ));
     }
     public function indexadminAction() 
     {
         
         return new ViewModel();
     }
     public function indexuserAction()
     {
         if ($this->zfcUserAuthentication()->hasIdentity()) {
         
             $cos=$this->zfcUserAuthentication()->getIdentity()->getUsername();
         }
         
         return new ViewModel(array(
         'zamowienias' => $this->getZamowieniaTable()->fetchAll_user($cos),
         ));
     }
     public function getZamowieniaTable()
     {
         if (!$this->zamowieniaTable) {
             $sm = $this->getServiceLocator();
             $this->zamowieniaTable = $sm->get('Zamowienia\Model\ZamowieniaTable');
         }
         return $this->zamowieniaTable;
     }
     public function addAction()
     {
         $form = new ZamowieniaForm();
         $form->get('submit')->setValue('Dodaj');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $zamowienia = new Zamowienia();
             $form->setInputFilter($zamowienia->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) { 
                 $zamowienia->exchangeArray($form->getData());
                 $this->getZamowieniaTable()->saveZamowienia($zamowienia);
                 return $this->redirect()->toRoute('zamowienia',array(
                 'action' => 'indexr',
                 //'id_przedmiotu' => '1',
             ));
             } 
         }
         return array('form' => $form);
     }
     public function addnewAction()
     {  
        //$id_przedmiotu = (int) $this->params()->fromRoute('kod', 0);
        $id_zamowienia = (int) $this->params()->fromRoute('id_zamowienia', 0);
        
         if (!$id_zamowienia) {
             return $this->redirect()->toRoute('zamowienia', array(
                 'action' => 'add',
                 //'id_przedmiotu' => '1',
             ));
         }
         
         try {
             $zamowienia = $this->getZamowieniaTable()->getZamowienia($id_zamowienia);
         }
         catch (\Exception $ex) {
             return $this->redirect()->toRoute('zamowienia', array(
                 'action' => 'index'
             ));
         }
         
         $form  = new ZamowieniaForm();
         $form->bind($zamowienia);
         $form->get('submit')->setAttribute('value', 'Zmień');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $form->setInputFilter($zamowienia->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $this->getZamowieniaTable()->saveZamowienia($zamowienia);
                 return $this->redirect()->toRoute('zamowienia');
             }
             else {echo "Error";
             $this->form()->getErrorMessages(); 
             //$form->getErrors(); 
             //$form->getErrorMessages();
             
             }
         }
         return array(
             'id_zamowienia' => $id_zamowienia,
             'form' => $form,
         );
     }
     public function editAction()
     {   $id_zamowienia = (int) $this->params()->fromRoute('id_zamowienia', 0);
         if (!$id_zamowienia) {
             return $this->redirect()->toRoute('zamowienia', array(
                 'action' => 'add' ));}         
         try {$zamowienia = $this->getZamowieniaTable()->getZamowienia($id_zamowienia);}
         catch (\Exception $ex) {
             return $this->redirect()->toRoute('zamowienia', array(
                 'action' => 'index'));}         
         $form  = new ZamowieniaForm();
         $form->bind($zamowienia);
         $form->get('submit')->setAttribute('value', 'Zmień');
         $request = $this->getRequest();
         if ($request->isPost()) {
             $form->setInputFilter($zamowienia->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 
                 $this->getZamowieniaTable()->saveZamowienia($zamowienia);
                 return $this->redirect()->toRoute('zamowienia',array(
                 'action' => 'indexr',
                 //'id_przedmiotu' => '1',
             ));
             }
             else {echo "Error";
             $this->form()->getErrorMessages(); 
             //$form->getErrors(); 
             //$form->getErrorMessages();
             
             }
         }
         return array(
             'id_zamowienia' => $id_zamowienia,
             'form' => $form,
         );
     }

     
 }
