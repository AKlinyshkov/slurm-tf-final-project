#data "yandex_resourcemanager_folder" "project1" {
#  folder_id = "some_folder_id"
#}

resource "yandex_resourcemanager_folder_iam_binding" "admin" {
  folder_id = var.folder_id_val

  role = "editor"

  members = [
    "serviceAccount:${yandex_iam_service_account.this.id}",
  ]
}
