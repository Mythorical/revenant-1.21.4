advancement revoke @s only revenant:contract/severcontract

clear @s book[custom_data~{revenant:"signed_contract"}]
tag @p[tag=indebt,distance=..10] remove indebt
