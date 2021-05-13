#!/bin/bash

MULTISITE="${MULTISITE-no}"
LOG_FORMAT="${LOG_FORMAT-\$host \$remote_addr - \$remote_user [\$time_local] \"\$request\" \$status \$body_bytes_sent \"\$http_referer\" \"\$http_user_agent\"}"
HTTP_PORT="${HTTP_PORT-8080}"
HTTPS_PORT="${HTTPS_PORT-8443}"
MAX_CLIENT_SIZE="${MAX_CLIENT_SIZE-10m}"
SERVER_TOKENS="${SERVER_TOKENS-off}"
WORKER_CONNECTIONS="${WORKER_CONNECTIONS-1024}"
WORKER_RLIMIT_NOFILE="${WORKER_RLIMIT_NOFILE-2048}"
USE_CLIENT_CACHE="${USE_CLIENT_CACHE-no}"
CLIENT_CACHE_EXTENSIONS="${CLIENT_CACHE_EXTENSIONS-jpg|jpeg|png|bmp|ico|svg|tif|css|js|otf|ttf|eot|woff|woff2}"
CLIENT_CACHE_CONTROL="${CLIENT_CACHE_CONTROL-public, max-age=15552000}"
CLIENT_CACHE_ETAG="${CLIENT_CACHE_ETAG-on}"
USE_OPEN_FILE_CACHE="${USE_OPEN_FILE_CACHE-no}"
OPEN_FILE_CACHE="${OPEN_FILE_CACHE-max=1000 inactive=20s}"
OPEN_FILE_CACHE_ERRORS="${OPEN_FILE_CACHE_ERRORS-on}"
OPEN_FILE_CACHE_MIN_USES="${OPEN_FILE_CACHE_MIN_USES-2}"
OPEN_FILE_CACHE_VALID="${OPEN_FILE_CACHE_VALID-30s}"
USE_PROXY_CACHE="${USE_PROXY_CACHE-no}"
PROXY_CACHE_PATH_ZONE_SIZE="${PROXY_CACHE_PATH_ZONE_SIZE-10m}"
PROXY_CACHE_PATH_PARAMS="${PROXY_CACHE_PATH_PARAMS-max_size=100m}"
PROXY_CACHE_METHODS="${PROXY_CACHE_METHODS-GET HEAD}"
PROXY_CACHE_MIN_USES="${PROXY_CACHE_MIN_USES-2}"
PROXY_CACHE_KEY="${PROXY_CACHE_KEY-\$scheme\$host\$request_uri}"
PROXY_CACHE_VALID="${PROXY_CACHE_VALID-200=10m 301=10m 302=1h}"
PROXY_NO_CACHE="${PROXY_NO_CACHE-\$http_authorization}"
PROXY_CACHE_BYPASS="${PROXY_CACHE_BYPASS-\$http_authorization}"
USE_GZIP="${USE_GZIP-no}"
GZIP_COMP_LEVEL="${GZIP_COMP_LEVEL-5}"
GZIP_MIN_LENGTH="${GZIP_MIN_LENGTH-1000}"
GZIP_TYPES="${GZIP_TYPES-application/atom+xml application/javascript application/json application/rss+xml application/vnd.ms-fontobject application/x-font-opentype application/x-font-truetype application/x-font-ttf application/x-javascript application/xhtml+xml application/xml font/eot font/opentype font/otf font/truetype image/svg+xml image/vnd.microsoft.icon image/x-icon image/x-win-bitmap text/css text/javascript text/plain text/xml}"
USE_BROTLI="${USE_BROTLI-no}"
BROTLI_COMP_LEVEL="${BROTLI_COMP_LEVEL-6}"
BROTLI_MIN_LENGTH="${BROTLI_MIN_LENGTH-1000}"
BROTLI_TYPES="${BROTLI_TYPES-application/atom+xml application/javascript application/json application/rss+xml application/vnd.ms-fontobject application/x-font-opentype application/x-font-truetype application/x-font-ttf application/x-javascript application/xhtml+xml application/xml font/eot font/opentype font/otf font/truetype image/svg+xml image/vnd.microsoft.icon image/x-icon image/x-win-bitmap text/css text/javascript text/plain text/xml}"
REMOTE_PHP_PATH="${REMOTE_PHP_PATH-/app}"
USE_REVERSE_PROXY="${USE_REVERSE_PROXY-no}"
REMOVE_HEADERS="${REMOVE_HEADERS-Server X-Powered-By X-AspNet-Version X-AspNetMvc-Version}"
X_FRAME_OPTIONS="${X_FRAME_OPTIONS-DENY}"
X_XSS_PROTECTION="${X_XSS_PROTECTION-1; mode=block}"
X_CONTENT_TYPE_OPTIONS="${X_CONTENT_TYPE_OPTIONS-nosniff}"
REFERRER_POLICY="${REFERRER_POLICY-no-referrer}"
PERMISSIONS_POLICY="${PERMISSIONS_POLICY-accelerometer=(), ambient-light-sensor=(), autoplay=(), camera=(), display-capture=(), document-domain=(), encrypted-media=(), fullscreen=(), geolocation=(), gyroscope=(), magnetometer=(), microphone=(), midi=(), payment=(), picture-in-picture=(), speaker=(), sync-xhr=(), usb=(), vibrate=(), vr=()}"
FEATURE_POLICY="${FEATURE_POLICY-accelerometer 'none'; ambient-light-sensor 'none'; autoplay 'none'; camera 'none'; display-capture 'none'; document-domain 'none'; encrypted-media 'none'; fullscreen 'none'; geolocation 'none'; gyroscope 'none'; magnetometer 'none'; microphone 'none'; midi 'none'; payment 'none'; picture-in-picture 'none'; speaker 'none'; sync-xhr 'none'; usb 'none'; vibrate 'none'; vr 'none'}"
DISABLE_DEFAULT_SERVER="${DISABLE_DEFAULT_SERVER-no}"
SERVER_NAME="${SERVER_NAME-www.bunkerity.com}"
ALLOWED_METHODS="${ALLOWED_METHODS-GET|POST|HEAD}"
BLOCK_USER_AGENT="${BLOCK_USER_AGENT-yes}"
WHITELIST_USER_AGENT="${WHITELIST_USER_AGENT-}"
BLOCK_USER_AGENT_CRON="${BLOCK_USER_AGENT_CRON-30 0 * * *}"
BLOCK_REFERRER="${BLOCK_REFERRER-yes}"
BLOCK_REFERRER_CRON="${BLOCK_REFERRER_CRON-45 0 * * *}"
BLOCK_TOR_EXIT_NODE="${BLOCK_TOR_EXIT_NODE-yes}"
BLOCK_TOR_EXIT_NODE_CRON="${BLOCK_TOR_EXIT_NODE_CRON-0 */1 * * *}"
BLOCK_PROXIES="${BLOCK_PROXIES-yes}"
BLOCK_PROXIES_CRON="${BLOCK_PROXIES_CRON-0 3 * * *}"
BLOCK_ABUSERS="${BLOCK_ABUSERS-yes}"
BLOCK_ABUSERS_CRON="${BLOCK_ABUSERS_CRON-0 2 * * *}"
AUTO_LETS_ENCRYPT="${AUTO_LETS_ENCRYPT-no}"
AUTO_LETS_ENCRYPT_CRON="${AUTO_LETS_ENCRYPT_CRON-15 0 * * *}"
HTTP2="${HTTP2-yes}"
HTTPS_PROTOCOLS="${HTTPS_PROTOCOLS-TLSv1.2 TLSv1.3}"
STRICT_TRANSPORT_SECURITY="${STRICT_TRANSPORT_SECURITY-max-age=31536000}"
USE_MODSECURITY="${USE_MODSECURITY-yes}"
USE_MODSECURITY_CRS="${USE_MODSECURITY_CRS-yes}"
MODSECURITY_SEC_AUDIT_ENGINE="${MODSECURITY_SEC_AUDIT_ENGINE-RelevantOnly}"
CONTENT_SECURITY_POLICY="${CONTENT_SECURITY_POLICY-object-src 'none'; frame-ancestors 'self'; form-action 'self'; block-all-mixed-content; sandbox allow-forms allow-same-origin allow-scripts allow-popups allow-downloads; base-uri 'self';}"
COOKIE_FLAGS="${COOKIE_FLAGS-* HttpOnly SameSite=Lax}"
COOKIE_AUTO_SECURE_FLAG="${COOKIE_AUTO_SECURE_FLAG-yes}"
SERVE_FILES="${SERVE_FILES-yes}"
WRITE_ACCESS="${WRITE_ACCESS-no}"
REDIRECT_HTTP_TO_HTTPS="${REDIRECT_HTTP_TO_HTTPS-no}"
LISTEN_HTTP="${LISTEN_HTTP-yes}"
USE_FAIL2BAN="${USE_FAIL2BAN-yes}"
FAIL2BAN_STATUS_CODES="${FAIL2BAN_STATUS_CODES-400|401|403|404|405|444}"
FAIL2BAN_BANTIME="${FAIL2BAN_BANTIME-3600}"
FAIL2BAN_FINDTIME="${FAIL2BAN_FINDTIME-60}"
FAIL2BAN_MAXRETRY="${FAIL2BAN_MAXRETRY-15}"
FAIL2BAN_IGNOREIP="${FAIL2BAN_IGNOREIP-127.0.0.1/8 192.168.0.0/16 172.16.0.0/12 10.0.0.0/8}"
USE_CLAMAV_UPLOAD="${USE_CLAMAV_UPLOAD-yes}"
USE_CLAMAV_SCAN="${USE_CLAMAV_SCAN-yes}"
USE_CLAMAV_SCAN_CRON="${USE_CLAMAV_SCAN_CRON-30 1 * * *}"
CLAMAV_UPDATE_CRON="${CLAMAV_UPDATE_CRON-0 1 * * *}"
CLAMAV_SCAN_REMOVE="${CLAMAV_SCAN_REMOVE-yes}"
USE_AUTH_BASIC="${USE_AUTH_BASIC-no}"
AUTH_BASIC_TEXT="${AUTH_BASIC_TEXT-Restricted area}"
AUTH_BASIC_LOCATION="${AUTH_BASIC_LOCATION-sitewide}"
AUTH_BASIC_USER="${AUTH_BASIC_USER-changeme}"
AUTH_BASIC_PASSWORD="${AUTH_BASIC_PASSWORD-changeme}"
USE_CUSTOM_HTTPS="${USE_CUSTOM_HTTPS-no}"
ROOT_FOLDER="${ROOT_FOLDER-/www}"
ROOT_SITE_SUBFOLDER="${ROOT_SITE_SUBFOLDER-}"
DNS_RESOLVERS="${DNS_RESOLVERS-127.0.0.11}"
USE_WHITELIST_IP="${USE_WHITELIST_IP-yes}"
WHITELIST_IP_LIST="${WHITELIST_IP_LIST-127.0.0.1 23.21.227.69 40.88.21.235 50.16.241.113 50.16.241.114 50.16.241.117 50.16.247.234 52.204.97.54 52.5.190.19 54.197.234.188 54.208.100.253 54.208.102.37 107.21.1.8}"
USE_WHITELIST_REVERSE="${USE_WHITELIST_REVERSE-yes}"
WHITELIST_REVERSE_LIST="${WHITELIST_REVERSE_LIST-.googlebot.com .google.com .search.msn.com .crawl.yahoot.net .crawl.baidu.jp .crawl.baidu.com .yandex.com .yandex.ru .yandex.net}"
USE_BLACKLIST_IP="${USE_BLACKLIST_IP-yes}"
BLACKLIST_IP_LIST="${BLACKLIST_IP_LIST-}"
USE_BLACKLIST_REVERSE="${USE_BLACKLIST_REVERSE-yes}"
BLACKLIST_REVERSE_LIST="${BLACKLIST_REVERSE_LIST-.shodan.io}"
USE_DNSBL="${USE_DNSBL-yes}"
DNSBL_LIST="${DNSBL_LIST-bl.blocklist.de problems.dnsbl.sorbs.net sbl.spamhaus.org xbl.spamhaus.org}"
USE_LIMIT_REQ="${USE_LIMIT_REQ-yes}"
LIMIT_REQ_RATE="${LIMIT_REQ_RATE-1r/s}"
LIMIT_REQ_BURST="${LIMIT_REQ_BURST-2}"
LIMIT_REQ_CACHE="${LIMIT_REQ_CACHE-10m}"
USE_LIMIT_CONN="${USE_LIMIT_CONN-yes}"
LIMIT_CONN_MAX="${LIMIT_CONN_MAX-50}"
LIMIT_CONN_CACHE="${LIMIT_CONN_CACHE-10m}"
PROXY_REAL_IP="${PROXY_REAL_IP-no}"
PROXY_REAL_IP_FROM="${PROXY_REAL_IP_FROM-192.168.0.0/16 172.16.0.0/12 10.0.0.0/8}"
PROXY_REAL_IP_HEADER="${PROXY_REAL_IP_HEADER-X-Forwarded-For}"
PROXY_REAL_IP_RECURSIVE="${PROXY_REAL_IP_RECURSIVE-on}"
GEOIP_CRON="${GEOIP_CRON-0 4 2 * *}"
GENERATE_SELF_SIGNED_SSL="${GENERATE_SELF_SIGNED_SSL-no}"
SELF_SIGNED_SSL_EXPIRY="${SELF_SIGNED_SSL_EXPIRY-365}"
SELF_SIGNED_SSL_COUNTRY="${SELF_SIGNED_SSL_COUNTRY-CH}"
SELF_SIGNED_SSL_STATE="${SELF_SIGNED_SSL_STATE-Switzerland}"
SELF_SIGNED_SSL_CITY="${SELF_SIGNED_SSL_CITY-Bern}"
SELF_SIGNED_SSL_ORG="${SELF_SIGNED_SSL_ORG-AcmeInc}"
SELF_SIGNED_SSL_OU="${SELF_SIGNED_SSL_OU-IT}"
SELF_SIGNED_SSL_CN="${SELF_SIGNED_SSL_CN-web}"
ANTIBOT_URI="${ANTIBOT_URI-/challenge}"
USE_ANTIBOT="${USE_ANTIBOT-no}"
ANTIBOT_RECAPTCHA_SCORE="${ANTIBOT_RECAPTCHA_SCORE-0.7}"
ANTIBOT_SESSION_SECRET="${ANTIBOT_SESSION_SECRET-random}"
USE_CROWDSEC="${USE_CROWDSEC-no}"
USE_API="${USE_API-no}"
API_URI="${API_URI-random}"
API_WHITELIST_IP="${API_WHITELIST_IP-192.168.0.0/16 172.16.0.0/12 10.0.0.0/8}"
SWARM_MODE="${SWARM_MODE-no}"

