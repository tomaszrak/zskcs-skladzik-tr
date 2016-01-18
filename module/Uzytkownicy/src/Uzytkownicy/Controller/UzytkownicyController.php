<?php
namespace Uzytkownicy\Controller;

 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;
 use Uzytkownicy\Model\Uzytkownicy;          
 use Uzytkownicy\Form\UzytkownicyForm;
 

 class UzytkownicyController extends AbstractActionController
 {
     protected $uzytkownicyTable;
     public function indexAction()
     {
         return new ViewModel(array(
         'uzytkownicys' => $this->getUzytkownicyTable()->fetchAll(),
         ));
     }
     public function getUzytkownicyTable()
     {
         if (!$this->uzytkownicyTable) {
             $sm = $this->getServiceLocator();
             $this->uzytkownicyTable = $sm->get('Uzytkownicy\Model\UzytkownicyTable');
         }
         return $this->uzytkownicyTable;
     }
     public function addAction()
     {
         $form = new UzytkownicyForm();
         $form->get('submit')->setValue('Dodaj');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $uzytkownicy = new Uzytkownicy();
             $form->setInputFilter($uzytkownicy->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) { 
                 $uzytkownicy->exchangeArray($form->getData());
                 $this->getUzytkownicyTable()->saveUzytkownicy($uzytkownicy);
                 return $this->redirect()->toRoute('uzytkownicy');
             } 
         }
         return array('form' => $form);
     }
     
     public function editAction()
     {
         $user_id = (int) $this->params()->fromRoute('user_id', 0);
         if (!$user_id) {
             return $this->redirect()->toRoute('uzytkownicy', array(
                 'action' => 'add'
             ));
         }
         
         try {
             $uzytkownicy = $this->getUzytkownicyTable()->getUzytkownicy($user_id);
         }
         catch (\Exception $ex) {
             return $this->redirect()->toRoute('uzytkownicy', array(
                 'action' => 'index'
             ));
         }
         
         $form  = new UzytkownicyForm();
         $form->bind($uzytkownicy);
         $form->get('submit')->setAttribute('value', 'Zmień');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $form->setInputFilter($uzytkownicy->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $this->getUzytkownicyTable()->saveUzytkownicy($uzytkownicy);
                 return $this->redirect()->toRoute('uzytkownicy');
             }
             else {echo "Error";
             $this->form()->getErrorMessages(); 
             //$form->getErrors(); 
             //$form->getErrorMessages();
             
             }
         }
         return array(
             'user_id' => $user_id,
             'form' => $form,
         );
     }

     
 }
