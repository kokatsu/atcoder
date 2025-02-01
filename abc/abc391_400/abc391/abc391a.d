import std;

void main() {
    string D;
    readf("%s\n", D);

    dchar[dchar] dirs = ['N': 'S', 'S': 'N', 'E': 'W', 'W': 'E'];

    string res = D.map!(x => dirs[x])
        .to!string;
    res.writeln;
}
