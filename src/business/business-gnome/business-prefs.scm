;; Business Preferences
;;
;; Created by:	Derek Atkins <derek@ihtfp.com>
;;
;; This program is free software; you can redistribute it and/or    
;; modify it under the terms of the GNU General Public License as   
;; published by the Free Software Foundation; either version 2 of   
;; the License, or (at your option) any later version.              
;;                                                                  
;; This program is distributed in the hope that it will be useful,  
;; but WITHOUT ANY WARRANTY; without even the implied warranty of   
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the    
;; GNU General Public License for more details.                     
;;                                                                  
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, contact:
;;
;; Free Software Foundation           Voice:  +1-617-542-5942
;; 59 Temple Place - Suite 330        Fax:    +1-617-542-2652
;; Boston, MA  02111-1307,  USA       gnu@gnu.org

(define *option-page* (N_ "Business"))

(gnc:register-configuration-option
 (gnc:make-internal-option
  "__gui" "invoice_reg_width" 0))

(gnc:register-configuration-option
 (gnc:make-number-range-option
  *option-page* (N_ "Number of Rows")
  "a" (N_ "Default number of register rows to display in Invoices.")
   10.0 ;; default
    1.0 ;; lower bound
  200.0 ;; upper bound
    0.0 ;; number of decimals
    1.0 ;; step size
  ))

(gnc:register-configuration-option
 (gnc:make-simple-boolean-option
  *option-page* (N_ "Tax Included?")
  "f" (N_ (string-append
	   "Whether tax is included by default in entries. "
	   "This setting is inherited by new customers and vendors"))
  #f))

