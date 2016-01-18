<?php 
namespace Uzytkownicy\Form;

 use Zend\Form\Form;

 class UzytkownicyForm extends Form
 {
     public function __construct($name = null)
     {
         // we want to ignore the name passed
         parent::__construct('uzytkownicy');

         $this->add(array(
             'name' => 'user_id',
             'type' => 'Hidden',
         ));
         $this->add(array(
             'name' => 'username',
             'type' => 'Text',
             'options' => array(
                 'label' => 'Użytkownik: ',
             ),
         ));
         $this->add(array(
             'name' => 'email',
             'type' => 'Text',
             'options' => array(
                 'label' => 'EMail: ',
             ),
         ));
	 $this->add(array(
             'name' => 'state',
             //'type' => 'Text',
             'type' => 'Zend\Form\Element\Select',
             'options' => array(
                 'label' => 'Aktywny?',
                 'value_options' => array(
             'Tak' => 'Tak',
             'Nie' => 'Nie',
             
             ),),
         ));  
         
         $this->add(array(
             'name' => 'submit',
             'type' => 'Submit',
             'attributes' => array(
                 'value' => 'Go',
                 'id' => 'submitbutton',
             ),
         ));
     }
 }