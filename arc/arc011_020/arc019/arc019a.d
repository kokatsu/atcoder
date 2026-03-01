import std;

void main() {
    string S;
    readfln("%s", S);

    dchar[dchar] D = [
        'O': '0',
        'D': '0',
        'I': '1',
        'Z': '2',
        'S': '5',
        'B': '8',
    ];

    string res = S.translate(D);
    res.writeln;
}
