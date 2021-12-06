package DiamonShop.Entity;

public class slides {
	private int slides_id;
	private String slides_caption, slides_content, slides_img;
	
	public slides() {
		// TODO Auto-generated constructor stub
	}
	public slides(int slides_id, String slides_caption, String slides_content, String slides_img) {
		super();
		this.slides_id = slides_id;
		this.slides_caption = slides_caption;
		this.slides_content = slides_content;
		this.slides_img = slides_img;
	}

	public int getSlides_id() {
		return slides_id;
	}

	public void setSlides_id(int slides_id) {
		this.slides_id = slides_id;
	}

	public String getSlides_caption() {
		return slides_caption;
	}

	public void setSlides_caption(String slides_caption) {
		this.slides_caption = slides_caption;
	}

	public String getslides_content() {
		return slides_content;
	}

	public void setslides_content(String slides_content) {
		this.slides_content = slides_content;
	}

	public String getSlides_img() {
		return slides_img;
	}

	public void setSlides_img(String slides_img) {
		this.slides_img = slides_img;
	}

}
