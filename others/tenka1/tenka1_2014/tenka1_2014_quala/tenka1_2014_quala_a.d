import std;

void main() {
    writefln("%-(%s\n%)", iota(1, 1001).map!(i => i.to!string).array.sort);
}
