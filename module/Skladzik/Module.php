<?php
namespace Skladzik;

 use Skladzik\Model\Skladzik;
 use Skladzik\Model\SkladzikTable;
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
                 'Skladzik\Model\SkladzikTable' =>  function($sm) {
                     $tableGateway = $sm->get('SkladzikTableGateway');
                     $table = new SkladzikTable($tableGateway);
                     return $table;
                 },
                 'SkladzikTableGateway' => function ($sm) {
                     $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                     $resultSetPrototype = new ResultSet();
                     $resultSetPrototype->setArrayObjectPrototype(new Skladzik());
                     return new TableGateway('skladzik', $dbAdapter, null, $resultSetPrototype);
                 },
             ),
         );
     }

 }
