import std;

void main() {
    string S = readln.chomp;

    dchar[dchar] table = ['O': 'A', 'A': 'O'];

    string res = S.translate(table);
    res.writeln;
}
