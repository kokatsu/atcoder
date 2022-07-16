import std;

void main() {
    auto S = readln.chomp.split;

    dchar[] res;
    foreach (s; S) res ~= s.front;

    res.writeln;
}