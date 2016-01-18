<?php
namespace Zamowienia\Model;


 use Zend\Db\TableGateway\TableGateway;
 use Zend\Db\Sql\Where;
 

 class ZamowieniaTable
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
     public function fetchAll_user($user)
     {
         $user_new = $user;
         $where = new Where();
         $where->like('id_uzytkownika', $user_new);
         $resultSet = $this->tableGateway->select(array($where));
         return $resultSet;
     }
     public function fetchAll_request()
     {   $resultSet = $this->tableGateway->select(array('status' => 'Oczekujące'));
         return $resultSet;}
     public function fetchAll_accepted()
     {   $resultSet = $this->tableGateway->select(array('status' => 'Zaakceptowane'));
         return $resultSet;}
     public function fetchAll_archives()
     {   $resultSet = $this->tableGateway->select(array('status' => 'Archiwalne'));
         return $resultSet;}
     public function getZamowienia($id)
     {   $id_zamowienia  = (int) $id;
         $rowset = $this->tableGateway->select(array('id_zamowienia' => $id_zamowienia));
         $row = $rowset->current();
         if (!$row) {
             throw new \Exception("Could not find row $id_zamowienia");
         }
         return $row;}
     public function saveZamowienia(Zamowienia $zamowienia)
     {   $data = array(
             //'data_dodania' => $article->data_dodania,
             'data' => date("Y-m-d H:i:s",mktime()),
             'id_uzytkownika'  => $zamowienia->id_uzytkownika,
             'id_przedmiotu' => $zamowienia->id_przedmiotu,
             'status'  => $zamowienia->status,
             'informacje'  => $zamowienia->informacje,
              
         );
         $id_zamowienia = (int) $zamowienia->id_zamowienia;
         if ($id_zamowienia == 0) {
             $this->tableGateway->insert($data);
         } else {
             if ($this->getZamowienia($id_zamowienia)) {
                 $this->tableGateway->update($data, array('id_zamowienia' => $id_zamowienia));
             } else {
                 throw new \Exception('Reserve id does not exist');
             }
         }
     }

     
 }
