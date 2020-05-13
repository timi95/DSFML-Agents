import std.stdio;

import dsfml.graphics;
import dsfml.system;




//
public 	class Agent() {
	private Vector2!float newPosition;
	private Color* circle_color;
	private CircleShape circle;

	this(){
		this.newPosition.x = 25.0;
		this.newPosition.y = 25.0;
		this.circle_color = new Color();
		this.circle = new CircleShape();
	}

	public void update() {
		circle.radius(10.0);
		circle.fillColor(circle_color.Red);
		circle.position(newPosition);
	}

	public void draw(RenderWindow window) {
		// writeln("Agent class draw() called ");
		window.draw(this.circle);
	}
}

void main()
{
	RenderWindow window =  new RenderWindow(VideoMode(500, 600), "DSFML");

    // Create a graphical text to display
    auto font = new Font();
    if(!font.loadFromFile("Organo.ttf"))
        return;
    auto text = new Text("Hello DSFML", font, 50);
	

	// Vector2!float newPosition;
	// newPosition.x = 25.0;
	// newPosition.y = 25.0;
	// auto circle_color = new Color();
	// auto circle = new CircleShape();
	// circle.radius(10.0);
	// circle.fillColor(circle_color.Red);
	// circle.position(newPosition);
	auto agent = new Agent!();

	while ( window.isOpen() ) {
		Event event;
		while ( window.pollEvent(event) ) {
			if ( event.type == Event.EventType.Closed ) { 
				window.close();
			}
		}

		// Clear screen
		window.clear();

		// Draw the string
		window.draw(text);

		// Draw the circle
		agent.draw(window);
		// window.draw(circle);

		// Update the window
		window.display();
	}
	writeln("Edit source/app.d to start your project.");
}
