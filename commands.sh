echo  $WEBAPPNAME
az webapp up --name $WEBAPPNAME --resource-group $AZURESERVICECONNECTIONID --sku B1 --logs --runtime "PYTHON:3.9"