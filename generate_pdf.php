<?php
require_once('tcpdf/tcpdf.php');
include 'connexion.php';

$pdf = new TCPDF();

$pdf->AddPage();

$pdf->SetFont('times', 'I', 12);

// Titre du PDF
$pdf->Cell(0, 10, 'Historique des Transactions', 0, 1, 'C');

// Ligne vide
$pdf->Ln(10);

// Requête pour récupérer l'historique des transactions
$sql_historique = "SELECT montant, type, date_transaction FROM transactions ORDER BY date_transaction DESC";
$result_historique = $conn->query($sql_historique);

if ($result_historique && $result_historique->num_rows > 0) {
    while ($row = $result_historique->fetch_assoc()) {
        $pdf->Cell(0, 10, 'Montant: ' . $row["montant"] . ' EUR - Type: ' . $row["type"] . ' - Date: ' . $row["date_transaction"], 0, 1);
    }
} else {
    $pdf->Cell(0, 10, 'Aucune transaction trouvée.', 0, 1);
}

$conn->close();

// Nom du fichier PDF
$pdfFileName = 'historique_transactions.pdf';

// Enregistrez le PDF dans un fichier
$pdf->Output($pdfFileName, 'D');
?>
