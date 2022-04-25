

RegisterNetEvent('ambulance:menu:ambulance' ,  function()

    local Processor = {
        {
            header = "EMS Menu",
            isMenuHeader = true,
        },
    
        {
            header = 'Revive',
            params = {
                event = 'hospital:client:RevivePlayer',
            }
            
        }, 
   
        {
            header = 'Panic button',
            params = {
                event = 'panic:hks',
            }
            
        },
        {
            header = 'Charge Unconscious',
            params = {
                event = 'police:client:KidnapPlayer',
            }
            
        },
        {
            header = 'Stretcher',
            params = {
                event = 'hospital:client:camilla',
            }
        },
      
    }
    exports['qb-menu']:openMenu(Processor)


end, 'ambulance')


RegisterNetEvent('hospital:client:camilla', function()
    
    local Processor = {
        {
            header = "Menu Stretcher",
            isMenuHeader = true,
        },
        {
            header = 'Pull out stretcher',
            params = {
                event = 'qb-radialmenu:client:TakeStretcher',
            }
        },
        {
            header = 'Save Stretcher',
            params = {
                event = 'qb-radialmenu:client:RemoveStretcher',
            }
        }
    } 
    exports['qb-menu']:openMenu(Processor)

end, 'ambulance')


RegisterNetEvent('police:menu:police' ,  function()

    local Processor = {
        {
          header = "Menu LSPD",
          isMenuHeader = true,
        },

        {
            header = 'Charge Unconscious',
            params = {
                event = 'police:client:KidnapPlayer',
            }
            
        },
        {
            header = 'Escort',
            params = {
                event = 'police:client:EscortPlayer',
            }
            
        },             
        {
            header = ' Put in vehicle ',
            params = {
                event = 'police:client:PutPlayerInVehicle',
            }
            
        },
        {
            header = 'Remove vehicle',
            params = {
                event = 'police:client:SetPlayerOutVehicle',
            }

        },

        {
            header = 'Panic button',
            params = {
                event = 'panic:hks',
            }
        },

    }
    exports['qb-menu']:openMenu(Processor)


end, 'police')


RegisterNetEvent('Hks_ems:client:salud', function()
    ExecuteCommand('diagnosis')

end, 'ambulance')

RegisterNetEvent('mechanic:menu:mechanic', function()
    
    local Processor = {
        {
            header = 'Mechanical Menu',
            isMenuHeader = true,
        },
    
        {
            header = 'towing vehicle',
            params = {
                event = 'qb-tow:client:TowVehicle',
            }
        },
        {
            header = 'Panic button',
            params = {
                event = 'panic:hks',
            }
        },
    }
    exports['qb-menu']:openMenu(Processor)

end, 'mechanic')


RegisterNetEvent('taxi:menu:taxi',  function()

    local Processor = {
        {
            header = "Taxi Menu",
            isMenuHeader = true,
        },

        {
            header = 'NPC quests',
            params = {
                event = 'qb-taxi:client:DoTaxiNpc',
            }
            
        },
        {
            header = 'Show/Hide taximeter',
            params = {
                event = 'qb-taxi:client:toggleMeter',
            }
            
        },
        {
            header = 'Turn on/off taximeter',
            params = {
                event = 'qb-taxi:client:enableMeter',
            }
            
        },
        {
            header = 'Panic button',
            params = {
                event = 'panic:hks',
            }
            
        }
      
    }
    exports['qb-menu']:openMenu(Processor)


end, 'taxi')
