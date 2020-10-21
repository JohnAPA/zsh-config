function emedx-setup(){
  ln -s /home/amion/ /home/emedx/amion/dir
  ln -s /home/empa/ /home/emedx/empa/dir
  ln -s /home/api/ /home/emedx/api/dir
  # ln -s /home/micron/ /home/emedx/micron/dir
  # ln -s /home/minion/ /home/emedx/minion/dir

  ln -s /etc/nginx/nginx.conf /home/emedx/amion/nginx/nginx.conf
  ln -s /etc/nginx/nginx.conf /home/emedx/empa/nginx/nginx.conf
  ln -s /etc/nginx/nginx.conf /home/emedx/api/nginx/nginx.conf
  # ln -s /etc/nginx/nginx.conf /home/emedx/micron/nginx/nginx.conf
  # ln -s /etc/nginx/nginx.conf /home/emedx/minion/nginx/nginx.conf

  ln -s /etc/nginx/sites-available/amion.empa.app /home/emedx/amion/nginx/amion.empa.app
  ln -s /etc/nginx/sites-available/api.empa.app /home/emedx/api/nginx/api.empa.app
  ln -s /etc/nginx/sites-available/empa.app /home/emedx/empa/nginx/empa.app
  # ln -s /etc/nginx/sites-available/amion.empa.app /home/emedx/micron/nginx/micron.empa.app
  # ln -s /etc/nginx/sites-available/amion.empa.app /home/emedx/minion/nginx/minion.empa.app


}