import std;

void main() {
    int Q;
    readf("%d\n", Q);

    DList!string books;
    foreach (_; 0 .. Q) {
        string S;
        readf("%s\n", S);

        if (S == "READ") {
            books.back.writeln;
            books.removeBack;
        }
        else {
            books.insertBack(S);
        }
    }
}