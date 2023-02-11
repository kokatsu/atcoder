import std;

void main() {
    auto s = readln.chomp.to!(dchar[]);

    auto res = s.map!(a => to!dchar((a.to!int+1)%2+'0')).array;
    res.writeln;
}