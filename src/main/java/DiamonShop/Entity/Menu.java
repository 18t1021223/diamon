package DiamonShop.Entity;

public class Menu {
	private int menu_id;
	private String menu_name, menu_url;

	public Menu() {
		// TODO Auto-generated constructor stub
	}

	public Menu(int menu_id, String menu_name, String menu_url) {
		super();
		this.menu_id = menu_id;
		this.menu_name = menu_name;
		this.menu_url = menu_url;
	}

	public int getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(int menu_id) {
		this.menu_id = menu_id;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public String getMenu_url() {
		return menu_url;
	}

	public void setMenu_url(String menu_url) {
		this.menu_url = menu_url;
	}

}
