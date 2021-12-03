<!doctype html>
<html lang="fr">
<?php
//session_start();
include_once('modele/bd.inc.php');
?>
 

 
<body>
 
    <div align="center"> 
    <h1> Inscription </h2> 
    <br/> 
    <form method="POST" action=""> 
 
    <table>
    <tr>
    <td align="right">
        <label for="pseudo">Pseudo : </label>
    </td>
    <td>
    <input type="text" placeholder ="Votre pseudo" id="pseudo" name ="pseudo" /> 
    </td>
    </tr>
    <tr>
        <td align="right">
        <label for="mail">Mail : </label>
        </td>
    <td>
    <input type="email" placeholder ="Votre mail" id="mail" name ="email" /> 
    </td>
    </tr>
    <tr>
        <td align="right" >
        <label for="password">Mot de passe : </label>
        </td>
    <td>
    <input type="password" placeholder ="Votre mot de passe" id="mdp" name ="mdp" /> 
    </td>
    </table> 
    </br>
    <button type="submit" name="addI" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Inscription</a>

</body>
</html>

<?php 

