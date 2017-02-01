echo "Fixing brew permissions. This will require your sudo password."
sudo chgrp -Rv admin /usr/local
sudo chmod -Rv g+w /usr/local

