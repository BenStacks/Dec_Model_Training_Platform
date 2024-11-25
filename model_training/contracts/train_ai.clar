;; AI Model Training Platform - Main Contract
;; Handles user registration, compute contributions, token rewards, and platform governance

;; Constants
(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-not-registered (err u101))
(define-constant err-already-registered (err u102))
(define-constant err-invalid-amount (err u103))
(define-constant err-cooldown-active (err u104))
(define-constant err-insufficient-stake (err u105))
(define-constant err-invalid-parameters (err u106))

;; Data Variables
(define-data-var minimum-contribution uint u100)
(define-data-var reward-rate uint u10)  ;; tokens per compute unit
(define-data-var total-compute-power uint u0)
(define-data-var contribution-cooldown uint u144) ;; ~24 hours in blocks
(define-data-var minimum-stake uint u1000) ;; minimum tokens to stake
(define-data-var platform-fee-rate uint u5) ;; 0.5% fee