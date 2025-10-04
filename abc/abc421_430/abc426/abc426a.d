import std;

void main() {
    string X, Y;
    readf("%s %s\n", X, Y);

    string res = "No";

    if (Y == "Ocelot") {
        res = "Yes";
    }
    else if (Y == "Serval") {
        if (X != "Ocelot") {
            res = "Yes";
        }
    }
    else if (X == "Lynx") {
        res = "Yes";
    }

    res.writeln;
}
