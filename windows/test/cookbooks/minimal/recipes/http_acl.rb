windows_http_acl 'http://+:50051/' do
  user 'pc\\fred'
end

windows_http_acl 'http://+:5986/' do
  user 'NT SERVICE\Winrm'
end

# Grant access to users "NT SERVICE\WinRM" and "NT SERVICE\Wecsvc" via sddl
windows_http_acl 'http://+:5985/' do
  sddl 'D:(A;;GX;;;S-1-5-80-569256582-2953403351-2909559716-1301513147-412116970)' \
       + '(A;;GX;;;S-1-5-80-4059739203-877974739-1245631912-527174227-2996563517)'
end

windows_http_acl 'http://+:50051/' do
  action :delete
end
