import std;

void main() {
    char A, B, C;
    readf("%c %c %c\n", A, B, C);

    char res = 'C';
    if (A != B) {
        res = 'A';
    }
    else if (A == C) {
        res = 'B';
    }

    res.writeln;
}
