import std;

void main() {
    string s;
    readf("%s\n", s);

    auto res = s.group.array;
    foreach (r; res)
        write(r[0], r[1]);
    writeln;
}
