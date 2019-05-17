
<?php
$action = $_REQUEST['action'];

switch($action)
{
	case 'login':
	{
		
		include("vues/v_login.php");
		$laconnexion->$Connexion($nom,$mdp);	
		break;
		
	}
	
	case 'logout' :
	{
		
		
			
			include("vue/v_logout.php");
			$deco->$Deconnexion();
			
			
			break;
		
		
	}
	
	case 'ajouterProduit' :
	{
		
		
		
			include("vue/v_add.php");
			
			
			break;
		
		
	}
	
	case 'supprimerProduit' :
	{
		
		
		
			include("vue/v_suppression.php");
			
			
			break;
		
		
	}
	
	case 'listeProduit' :
	{
		
		
		
			include("vue/v_listP.php");
			
			
			break;
		
		
	}
	
}
?>