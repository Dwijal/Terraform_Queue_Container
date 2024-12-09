#Resource group values
name="dev-rg"
location = "japaneast"

#Storage account values
storage_account_name = "devstorageaccountdwi"
account_tier = "Standard"
account_replication_type = "LRS"


#queue values
queuenames = ["sa-queue-01","sa-queue-02","sa-queue-03","sa-queue-04",
              "sa-queue-05","sa-queue-06","sa-queue-07","sa-queue-08"]


#containers values

storagecontainers = [ "sa-containers-01","sa-containers-02" ]
container_access_type = "private"