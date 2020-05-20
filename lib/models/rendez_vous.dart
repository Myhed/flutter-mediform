enum typeAppointement {
  operation,
  consultation
}
class Appointement {
    final String sujetRdv;
    final String nomHopital;
    final String typeAppointement;
    final String adresse;
    final String dateRdv;

  Appointement({
    this.sujetRdv,
    this.nomHopital,
    this.typeAppointement,
    this.adresse,
    this.dateRdv
  });
}