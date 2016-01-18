<?php
namespace Skladzik\Model;

 use Zend\Db\TableGateway\TableGateway;

 class SkladzikTable
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
     public function fetchAll_able()
     {
         $resultSet = $this->tableGateway->select(array('stan' => 'Jest'));
         return $resultSet;
     }
     public function fetchAll_games()
     {
         $resultSet = $this->tableGateway->select(array('typ' => 'Gra'));
         return $resultSet;
     }
     public function fetchAll_books()
     {
         $resultSet = $this->tableGateway->select(array('typ' => 'Książka'));
         return $resultSet;
     }
     public function fetchAll_stuff()
     {
         $resultSet = $this->tableGateway->select(array('typ' => 'Inne'));
         return $resultSet;
     }
     

     public function getSkladzik($id)
     {
         $id_przedmiotu  = (int) $id;
         $rowset = $this->tableGateway->select(array('id_przedmiotu' => $id_przedmiotu));
         $row = $rowset->current();
         if (!$row) {
             throw new \Exception("Could not find row $id_przedmiotu");
         }
         return $row;
     }
     
     public function getSkladzikReserve($id)
     {
         $id_przedmiotu  = (int) $id;
         $rowset = $this->tableGateway->select(array('id_przedmiotu' => $id_przedmiotu));
         $row = $rowset->current();
         if (!$row) {
             throw new \Exception("Could not find row $id_przedmiotu");
         }
         $nazwa_new = $row->nazwa;
         return $nazwa_new;
     }
     
     public function saveSkladzik(Skladzik $skladzik)
     {
       
         $data = array(
             'nazwa' => $skladzik->nazwa,
             'stan'  => $skladzik->stan,
             'typ'  => $skladzik->typ,
             'autor'  => $skladzik->autor,
             'kod'  => $skladzik->kod,
             'uwagi'  => $skladzik->uwagi,
             
              
         );
         $id_przedmiotu = (int) $skladzik->id_przedmiotu;
         if ($id_przedmiotu == 0) {
             $this->tableGateway->insert($data);
         } else {
             if ($this->getSkladzik($id_przedmiotu)) {
                 $this->tableGateway->update($data, array('id_przedmiotu' => $id_przedmiotu));
             } else {
                 throw new \Exception('Item id does not exist');
             }
         }
     }

     
 }
