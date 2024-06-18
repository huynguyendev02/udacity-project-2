echo  $WEBAPPNAME
az webapp up --name $WEBAPPNAME --resource-group $AZURESERVICECONNECTIONID --sku F1 --logs --runtime "PYTHON:3.9"
