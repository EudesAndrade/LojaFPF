
using System.ComponentModel.DataAnnotations;

namespace LojaVirtual.Web.Models
{
    
    public partial class Produtos
    {
        public int ID { get; set; }

        [Required(ErrorMessage = "A Descrição é obrigatório", AllowEmptyStrings = false)]
        [Display(Name = "Descrição")]
        public string Descricao { get; set; }

        [Required(ErrorMessage = "A Quantidade é obrigatório", AllowEmptyStrings = false)]
        public decimal? Quantidade { get; set; }

        [Required(ErrorMessage = "O valor é obrigatório", AllowEmptyStrings = false)]
        public decimal? Valor { get; set; }
    }
}