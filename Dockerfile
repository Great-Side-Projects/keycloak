# Usar la imagen base de Keycloak
FROM quay.io/keycloak/keycloak:latest

ARG KC_DB_URL
ARG KC_DB_USERNAME
ARG KC_DB_PASSWORD
ARG KEYCLOAK_ADMIN
ARG KEYCLOAK_ADMIN_PASSWORD

# Establecer variables de entorno
ENV KC_DB_URL=${KC_DB_URL} \
    KC_DB=postgres \
    KC_HEALTH_ENABLED=true \
    KC_METRICS_ENABLED=true \
    KC_DB_USERNAME=${KC_DB_USERNAME} \
    KC_DB_PASSWORD=${KC_DB_PASSWORD} \
    KEYCLOAK_ADMIN=${KEYCLOAK_ADMIN} \
    KEYCLOAK_ADMIN_PASSWORD=${KEYCLOAK_ADMIN_PASSWORD} \
    KC_HOSTNAME=https://authsp.azurewebsites.net \
    KC_DB_POOL_INITIAL_SIZE=5 \
    KC_DB_POOL_MAX_SIZE=5 \
    KC_DB_POOL_MIN_SIZE=1 
# Comando predeterminado para iniciar Keycloak
CMD ["start-dev"]