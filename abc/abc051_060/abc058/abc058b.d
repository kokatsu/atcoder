import std;

void main() {
    string O, E;
    readf("%s\n%s\n", O, E);

    auto res = roundRobin(O, E);
    res.writeln;
}
