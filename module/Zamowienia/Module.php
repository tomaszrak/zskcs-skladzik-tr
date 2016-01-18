<?php
namespace Zamowienia;

 use Zamowienia\Model\Zamowienia;
 use Zamowienia\Model\ZamowieniaTable;
 use Zend\Db\ResultSet\ResultSet;
 use Zend\Db\TableGateway\TableGateway;
 use Zend\ModuleManager\Feature\AutoloaderProviderInterface;
 use Zend\ModuleManager\Feature\ConfigProviderInterface;

 class Module implements AutoloaderProviderInterface, ConfigProviderInterface
 {
     public function getAutoloaderConfig()
     {
         return array(
             'Zend\Loader\ClassMapAutoloader' => array(
                 __DIR__ . '/autoload_classmap.php',
             ),
             'Zend\Loader\StandardAutoloader' => array(
                 'namespaces' => array(
                     __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                 ),
             ),
         );
     }

     public function getConfig()
     {
         return include __DIR__ . '/config/module.config.php';
     }
     
     public function getServiceConfig()
     {
         return array(
             'factories' => array(
                 'Zamowienia\Model\ZamowieniaTable' =>  function($sm) {
                     $tableGateway = $sm->get('ZamowieniaTableGateway');
                     $table = new ZamowieniaTable($tableGateway);
                     return $table;
                 },
                 'ZamowieniaTableGateway' => function ($sm) {
                     $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                     $resultSetPrototype = new ResultSet();
                     $resultSetPrototype->setArrayObjectPrototype(new Zamowienia());
                     return new TableGateway('zamowienia', $dbAdapter, null, $resultSetPrototype);
                 },
             ),
         );
     }

 }
