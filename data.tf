data "ansiblevault_path" "db_key" {
  path = "${path.module}/secrets"
  key  = "pg_db_user_password"
}