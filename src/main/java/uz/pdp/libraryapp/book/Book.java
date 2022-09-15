package uz.pdp.libraryapp.book;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import uz.pdp.libraryapp.author.Author;
import uz.pdp.libraryapp.category.Category;
import uz.pdp.libraryapp.language.Language;

import java.util.List;


@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class Book {
    private Integer id;
    private String title;
    private String description;
    private List<Author> authors;
    private String isbn;
    private List<Category> category;
    private Language language;
}
