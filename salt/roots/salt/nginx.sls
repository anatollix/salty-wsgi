base:
  pkgrepo.managed:
    - ppa: nginx/stable
    - require_in:
      - pkg: nginx

nginx:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: nginx
