require 'spec_helper'

describe "Static pages" do
    
    describe "Home page" do
        
        it "should have the content 'ZapDates'" do
            visit root_path
            expect(page).to have_content('ZapDates')
        end
        
        it "should have the base title" do
            visit root_path
            expect(page).to have_title("ZapDates")
        end
        
        it "should not have a custom page title" do
            visit root_path
            expect(page).not_to have_title('| Home')
        end
    end
    
    describe "Help page" do
        it "should have the content 'ZapDates'" do
            visit help_path
            expect(page).to have_content('ZapDates')
        end
        
        it "should have the base title" do
            visit help_path
            expect(page).to have_title("ZapDates")
        end
        
        it "should not have a custom page title" do
            visit help_path
            expect(page).not_to have_title('| Help')
        end
    end
    
    describe "About page" do
        
        it "should have the content 'ZapDates'" do
            visit about_path
            expect(page).to have_content('ZapDates')
        end
        
        it "should have the base title" do
           visit about_path
            expect(page).to have_title("ZapDates")
        end
        
        it "should not have a custom page title" do
            visit about_path
            expect(page).not_to have_title('| About')
        end
    end
    
    describe "Contact page" do
        
        it "should have the content 'Contact'" do
            visit contact_path
            expect(page).to have_content('Contact')
        end
        
        it "should have the title 'Contact'" do
            visit contact_path
            expect(page).to have_title("ZapDates | Contact")
        end
    end
end
