<div id="AjouterProduit">
<form method="POST" action="index.php?uc=administrer&action=login">
   <fieldset>
     <legend>Ajouter un produit</legend>
		<p>
			<label for="idd">Préciser l'identifiant du produit : </label>
			<input id="id" type="text" name="id" value="" size="30" maxlength="45">
		</p>
		<p>
			<label for="description">Description du produit : </label>
			 <input id="description" type="texte" name="mdp" value="" size="100" maxlength="500">
		</p>
	  	<p>
         <input type="submit" value="Valider" name="valider"> 
      </p>
</form>
</div>