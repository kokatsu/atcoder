import std;

void main() {
    int S = iota(4).map!(_ => readln.chomp.to!int).sum;

    string res = format("%d\n%d", S/60, S%60);
    res.writeln;
}