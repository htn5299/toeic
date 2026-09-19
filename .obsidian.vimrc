" Thoát insert mode nhanh bằng jk
imap jk <Esc>

" Đồng bộ clipboard với hệ thống
set clipboard=unnamed

" Di chuyển theo dòng hiển thị (visual line) thay vì dòng logic
nmap j gj
nmap k gk

" Bỏ highlight sau khi search bằng cách gõ :nohl
exmap nohl :nohl
nmap <Esc> :nohl
