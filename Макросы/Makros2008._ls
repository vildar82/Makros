; �������� ������ PluginManager.dll, ������� ��������� ��� ��������� ������
(defun-q vilStartup()
	 (c:LoadPluginManager)
	 )
;
(defun c:LoadPluginManager()
  (setq echo (getvar "cmdecho"))
  (setvar "cmdecho" 1)
  (setq fd (getvar "filedia"))
  (setvar "filedia" 0)
;  (command "_netload" "\\\\sgpsrv2/���/������������/�������/NET/PluginManager.dll")
  (setvar "filedia" fd)
  (setvar "cmdecho" echo)
  (print "PluginManager loaded")
  )

(setq S:STARTUP (append S:STARTUP vilStartup))