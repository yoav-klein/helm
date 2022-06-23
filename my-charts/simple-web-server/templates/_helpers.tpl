
{{/*
chart name
*/}}

{{- define "my-server.name" -}}
{{ default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}  
{{- end }}

{{/*
application full name
*/}}
{{- define "my-server.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := .Chart.Name }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Chart.Name .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{- define "my-server.selectorLabels" -}} 
app.kubernetes.io/name: {{ include "my-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end  }}
