
<?php
include 'connexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $montant = $_POST["montant"];
    $type = $_POST["type"];
    $date_transaction = $_POST["date_transaction"];

    $sql = "INSERT INTO transactions (montant, type, date_transaction) VALUES ('$montant', '$type', '$date_transaction')";
    if ($conn->query($sql) === TRUE) {
        echo "Transaction ajoutée avec succès.";
    } else {
        echo "Erreur lors de l'ajout de la transaction : " . $conn->error;
    }
}

$sql_solde = "SELECT SUM(montant) AS solde FROM transactions";
$result_solde = $conn->query($sql_solde);

if ($result_solde->num_rows > 0) {
    $row = $result_solde->fetch_assoc();
    $solde_actuel = $row["solde"];
} else {
    echo "Erreur lors de la récupération du solde.";
}

// Requête pour récupérer l'historique des transactions
$sql_historique = "SELECT montant, type, date_transaction FROM transactions ORDER BY date_transaction DESC";
$result_historique = $conn->query($sql_historique);

$conn->close();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion de Compte Bancaire</title>
    <style>
        /* ... Vos styles existants ... */
    </style>
</head>
<body>
    <div class="bandeau">
        <h1>Gestion de Compte Bancaire</h1>
    </div>

    <div class="formulaire">
        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <label class="label" for="montant">Montant :</label>
            <input class="input" type="number" name="montant" required>

            <label class="label" for="type">Type :</label>
            <select class="select" name="type" required>
                <option value="entree">Entrée</option>
                <option value="sortie">Sortie</option>
            </select>

            <label class="label" for="date_transaction">Date de la transaction :</label>
            <input class="input" type="date" name="date_transaction" required>

            <button class="bouton" type="submit">Ajouter une transaction</button>
        </form>

        <?php if (isset($solde_actuel)): ?>
            <p class="info">Solde actuel : <?php echo $solde_actuel; ?> EUR</p>
        <?php endif; ?>
    </div>

    <div class="historique">
        <h2>Historique des Transactions</h2>
        <?php
        if ($result_historique && $result_historique->num_rows > 0) {
            while ($row = $result_historique->fetch_assoc()) {
                echo '<div class="transaction">';
                echo 'Montant: ' . $row["montant"] . ' EUR - Type: ' . $row["type"] . ' - Date: ' . $row["date_transaction"];
                echo '</div>';
            }
        }
        ?>
    </div>

<!-- ... Votre code existant ... -->

<div id="historique">
    <h2>Historique des Transactions</h2>
    <?php
    if ($result_historique && $result_historique->num_rows > 0) {
        while ($row = $result_historique->fetch_assoc()) {
            echo '<div class="transaction">';
            echo 'Montant: ' . $row["montant"] . ' EUR - Type: ' . $row["type"] . ' - Date: ' . $row["date_transaction"];
            echo '</div>';
        }
    } else {
        echo '<p>Aucune transaction trouvée.</p>';
    }
    ?>
</div>

<!-- Ajoutez le lien pour télécharger le PDF -->
<a href="generate_pdf.php" target="_blank">Télécharger l'historique en PDF</a>

</body>
</html>



</body>
</html>

</html>