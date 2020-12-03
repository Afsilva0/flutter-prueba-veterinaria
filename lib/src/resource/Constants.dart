class Constants {
  static const urlAuthority = "192.168.0.8:8083";
  static const pathBase = "/api/petsoft";

  //API User
  static const urlFindAllUsers = pathBase + "/user/all";
  static const urlFindByIdUser = pathBase + "/user/id";
  static const urlInsertUser = pathBase + "/user/save";
  static const urlUpdateUser = pathBase + "/user/update";
  static const urlDeleteUser = pathBase + "/user/delete";

  //API Appointment
  static const urlFindAllApponintments = pathBase + "appointment/all";
  static const urlInsertApponintment = pathBase + "appointment/save";
  static const urlFindByIdApponintment = pathBase + "appointment/id";
  static const urlUpdateApponintment = pathBase + "appointment/update";
  static const urlDeleteApponintment = pathBase + "appointment/delete";

  //API Veterinary
<<<<<<< HEAD
  static const urlFindAllVeterinarys = pathBase + "/veterinary/all";
  static const urlInsertVeterinary = pathBase + "/veterinary/save";
  static const urlFindByIdVeterinary = pathBase + "/veterinary/id";
  static const urlUpdateVeterinary = pathBase + "/veterinary/update";
  static const urlDeleteVeterinary = pathBase + "/veterinary/delete";

  //API Pet
  static const urlFindAllPets = pathBase + "/pet/all";
  static const urlInsertPet = pathBase + "/pet/save";
  static const urlFindByIdPet = pathBase + "/pet/id";
  static const urlDeletePet = pathBase + "/pet/delete";
  //BranchOffice

  static const urlFindAllBranchOffice = pathBase + "/branchoffice/all";
  static const urlInsertBranchOffice = pathBase + "/branchoffice/save";
  static const urlFindByIdBranchOffice = pathBase + "/branchoffice/id";
  static const urlUpdateBranchOffice = pathBase + "/branchoffice/update";
  static const urlDeleteBranchOffice = pathBase + "/branchoffice/delete";

  // Auth
  static const urlRegister = pathBase + "/auth/register";
=======
  static const urlFindAllVeterinarys = "/veterinary/all";
  static const urlInsertVeterinary = "/veterinary/save";
  static const urlFindByIdVeterinary = "/veterinary/id";
  static const urlUpdateVeterinary = "/veterinary/update";
  static const urlDeleteVeterinary = "/veterinary/delete";

  //API Pet
  static const urlFindAllPets = "/pet/all";
  static const urlInsertPet = "/pet/save";
  static const urlFindByIdPet = "/pet/id";
<<<<<<< HEAD

  //message validation
  static const requireData = "El campo es requerido";
=======
>>>>>>> 1b3023dec0e6dc0980f40b46db788521fa56fa87
}
