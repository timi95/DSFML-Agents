import std.stdio;

import dsfml.graphics;
import dsfml.system;


void main()
{
	RenderWindow window =  new RenderWindow(VideoMode(500, 600), "DSFML");

    // Create a graphical text to display
    auto font = new Font();
    if(!font.loadFromFile("Organo.ttf"))
        return;
    auto text = new Text("Hello DSFML", font, 50);
	

	Vector2!float newPosition;
	newPosition.x = 25.0;
	newPosition.y = 25.0;
	auto circle_color = new Color();
	auto circle = new CircleShape();
	circle.radius(10.0);
	circle.fillColor(circle_color.Red);
	circle.position(newPosition);


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
		window.draw(circle);

		// Update the window
		window.display();
	}
	writeln("Edit source/app.d to start your project.");
}
//
public 	class Agent () {

}