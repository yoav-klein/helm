
{{/*
chart name
*/}}

{{- define "foo.name" -}}
{{ default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}  
{{- end }}

{{/*
application full name
*/}}
{{- define "foo.fullname" -}}
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

{{- define "foo.selectorLabels" -}} 
app.kubernetes.io/name: {{ include "foo.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end  }}
