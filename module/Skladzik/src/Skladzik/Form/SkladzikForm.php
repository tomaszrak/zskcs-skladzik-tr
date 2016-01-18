<?php 
namespace Skladzik\Form;

 use Zend\Form\Form;

 class SkladzikForm extends Form
 {
     public function __construct($name = null)
     {
         // we want to ignore the name passed
         parent::__construct('skladzik');

         $this->add(array('name' => 'id_przedmiotu','type' => 'Hidden',));
         
         $this->add(array('name' => 'nazwa','type' => 'Text','options' => array('label' => ' ',),));
         
         $this->add(array('name' => 'stan','type' => 'Text','options' => array('label' => ' ',),));
         
         $this->add(array('name' => 'typ','type' => 'Text','options' => array('label' => ' ',),));
         
         $this->add(array('name' => 'autor','type' => 'Text','options' => array('label' => ' ',),));  
         
         $this->add(array('name' => 'kod','type' => 'Text','options' => array('label' => ' ',),));
         
         $this->add(array('name' => 'uwagi','type' => 'Text','options' => array('label' => ' ',),));
         
         $this->add(array('name' => 'submit','type' => 'Submit','attributes' => array('value' => 'Go','id' => 'submitbutton',),));
     }
 }