{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "bjr.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "bjr.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Generate chart secret name
*/}}
{{- define "bjr.secretName" -}}
{{ default (include "bjr.fullname" .) .Values.existingSecret }}
{{- end -}}

{{/*
MySQL settings. Handles the case of an external MySQL instance as well
as a bundled MySQL
*/}}
{{- define "bjr.mysql" -}}
{{- if .Values.useKubernetesMySQL -}}
- name: BJR_DATABASE_USERNAME
  value: bjr
- name: BJR_DATABASE_PASSWORD
  valueFrom:
    secretKeyRef:
      name: bjr-mysql
      key: mysql-password
- name: BJR_DATABASE_HOST
  value: bjr-mysql
- name: BJR_DATABASE_PORT
  value: "3306"
{{- else -}}
- name: BJR_DATABASE_USERNAME
  valueFrom:
    secretKeyRef:
      name: {{ .Values.mysql.external.secretName }}
      key: {{ .Values.mysql.external.usernameKey }}
- name: BJR_DATABASE_PASSWORD
  valueFrom:
    secretKeyRef:
      name: {{ .Values.mysql.external.secretName }}
      key: {{ .Values.mysql.external.passwordKey }}
- name: BJR_DATABASE_HOST
  value: {{ .Values.mysql.external.address | quote }}
- name: BJR_DATABASE_PORT
  value: {{ .Values.mysql.external.port | quote}}
- name: BJR_DATABASE
  value: {{ .Values.mysql.external.database | quote }}
{{- end -}}
{{- end -}}

{{/*
Redis settings. Handles the case of an external Redis instance as well
as a bundled Redis
*/}}
{{- define "bjr.redis" -}}
{{- if .Values.redis.useKubernetesRedis -}}
- name: REDIS_HOST
  value: "bjr-redis-master"
- name: REDIS_SENTINELS
  value: "bjr-redis-headless"
- name: REDIS_PORT
  value: "6379"
- name: REDIS_SIDEKIQ_DB
  value: "0"
{{- else -}}
- name: REDIS_HOST
  value: {{ .Values.redis.external.address | quote }}
- name: REDIS_PORT
  value: {{ .Values.redis.external.port | quote }}
- name: REDIS_SIDEKIQ_DB
  value: {{ .Values.redis.external.sidekiqDb | quote }}
{{- end -}}
{{- end -}}
