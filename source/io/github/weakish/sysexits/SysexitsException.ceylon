"Super classes of all sysexits exceptions."
shared abstract class SysexitsException(message) extends Exception(message) {
    shared actual String message;
    shared formal Integer exit_code;
}

"Command line usage error, e.g. missing argument for option."
shared class CommandLineUsageError(String message) extends SysexitsException(message) {
    "EX_USAGE"
    shared actual Integer exit_code = 64;
}

"Data format error, e.g. passing a input file with wrong type."
shared class DataFormatError(String message) extends SysexitsException(message) {
    "EX_DATAERR"
    shared actual Integer exit_code = 65;
}

"Cannot open input."
shared class NoInputError(String message) extends SysexitsException(message) {
    "EX_NOINPUT"
    shared actual Integer exit_code = 66;
}

"Addressee unknown."
shared class NoUserError(String message) extends SysexitsException(message) {
    "EX_NOUSER"
    shared actual Integer exit_code = 67;
}

"Host name unknown."
shared class NoHostError(String message) extends SysexitsException(message) {
    "EX_NOHOST"
    shared actual Integer exit_code = 68;
}

"Service unavailable."
shared class ServiceUnavailableError(String message) extends SysexitsException(message) {
    "EX_UNAVAILABLE"
    shared actual Integer exit_code = 69;
}


"Internal software error."
shared class InternalSoftwareError(String message) extends SysexitsException(message) {
    "`ex_software` i.e. internal software error (sysexits.h)"
    shared actual Integer exit_code = 70;
}

"Similar to UnsupportedOperationException in Java."
shared class NotImplementedException(String message)
        extends InternalSoftwareError(message) {}
"Features will be implemented in future."
shared class NotImplementedYetException(String message)
        extends NotImplementedException(message) {}

"Low level system error, e.g. jvm and js runtime error or os error."
shared class SystemError(String message) extends SysexitsException(message) {
    "EX_OSERR"
    shared actual Integer exit_code = 71;
}

"Critical OS file missing."
shared class OSFileError(String message) extends SysexitsException(message) {
    "EX_OSFILE"
    shared actual Integer exit_code = 72;
}

"Can't create (user) output file."
shared class CanNotCreateFileError(String message) extends SysexitsException(message) {
    "EX_CANTCREAT"
    shared actual Integer exit_code = 73;
}

"Input/output error."
shared class IOError(String message) extends SysexitsException(message) {
    "EX_IOERR"
    shared actual Integer exit_code = 74;
}

"Temp failure; user is invited to retry."
shared class TempFailureError(String message) extends SysexitsException(message) {
    "EX_TEMPFAIL"
    shared actual Integer exit_code = 75;
}

"Remote error."
shared class RemoteError(String message) extends SysexitsException(message) {
    "EX_PROTOCOL"
    shared actual Integer exit_code = 76;
}

"permission denied."
shared class NoPermissionError(String message) extends SysexitsException(message) {
    "EX_NOPERM"
    shared actual Integer exit_code = 77;
}

"Wrong configuration."
shared class ConfigurationError(String message) extends SysexitsException(message) {
    "EX_CONFIG"
    shared actual Integer exit_code = 72;
}
