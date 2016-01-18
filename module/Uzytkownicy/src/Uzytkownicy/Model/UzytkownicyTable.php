<?php
namespace Uzytkownicy\Model;


 use Zend\Db\TableGateway\TableGateway;
 

 class UzytkownicyTable
 {
     protected $tableGateway;
     
     
     public function __construct(TableGateway $tableGateway)
     {
         $this->tableGateway = $tableGateway;
         
     }

     public function fetchAll()
     {
         $resultSet = $this->tableGateway->select();
         return $resultSet;
     }

     public function getUzytkownicy($user_id)
     {
         $user_id  = (int) $user_id;
         $rowset = $this->tableGateway->select(array('user_id' => $user_id));
         $row = $rowset->current();
         if (!$row) {
             throw new \Exception("Could not find row $user_id");
         }
         return $row;
     }
     
     
     public function saveUzytkownicy(Uzytkownicy $uzytkownicy)
     {
       
         $data = array(
             //'data_dodania' => $article->data_dodania,
             
             'user_id'  => $uzytkownicy->user_id,
             'state' => $uzytkownicy->state,
	     'email' => $uzytkownicy->email,
             'state'  => $uzytkownicy->state,
              
         );
         $user_id = (int) $uzytkownicy->user_id;
         if ($user_id == 0) {
             $this->tableGateway->insert($data);
         } else {
             if ($this->getUzytkownicy($user_id)) {
                 $this->tableGateway->update($data, array('user_id' => $user_id));
             } else {
                 throw new \Exception('Reserve id does not exist');
             }
         }
     }

     
 }
