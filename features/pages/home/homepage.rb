module Pages
  module Home
    class Homepage < SitePrism::Page
      def go_home_page
        visit 'https://www.metrocuadrado.com/calculadora-credito-hipotecario-vivienda/'
      end
    end
  end
end
