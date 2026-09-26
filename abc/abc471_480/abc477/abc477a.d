import std;

void main() {
    char c;
    readfln("%c", c);

    char res = 'B';
    if (c == 'B') {
        res = 'Y';
    }
    else if (c == 'Y') {
        res = 'R';
    }

    res.writeln;
}
