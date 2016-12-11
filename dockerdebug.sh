docker run -v $(PWD)/app:/app -p 4000:4000 --link postgres:db --name asset-control -it asset-control bash

