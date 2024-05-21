import std;

void main() {
    string s = readln.chomp;

    if (s.all!(c => c.isNumber == true)) {
        writeln(s.to!long * 2);
    }
    else {
        "error".writeln;
    }
}