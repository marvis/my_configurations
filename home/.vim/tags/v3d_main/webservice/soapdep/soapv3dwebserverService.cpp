/* soapv3dwebserverService.cpp
   Generated by gSOAP 2.8.1 from ../webservice/v3dwebserver.h
   Copyright(C) 2000-2010, Robert van Engelen, Genivia Inc. All Rights Reserved.
   The generated code is released under one of the following licenses:
   GPL OR Genivia's license for commercial use.
*/

#include "soapv3dwebserverService.h"

v3dwebserverService::v3dwebserverService()
{	v3dwebserverService_init(SOAP_IO_DEFAULT, SOAP_IO_DEFAULT);
}

v3dwebserverService::v3dwebserverService(const struct soap &_soap) :soap(_soap)
{ }

v3dwebserverService::v3dwebserverService(soap_mode iomode)
{	v3dwebserverService_init(iomode, iomode);
}

v3dwebserverService::v3dwebserverService(soap_mode imode, soap_mode omode)
{	v3dwebserverService_init(imode, omode);
}

v3dwebserverService::~v3dwebserverService()
{ }

void v3dwebserverService::v3dwebserverService_init(soap_mode imode, soap_mode omode)
{	soap_imode(this, imode);
	soap_omode(this, omode);
	static const struct Namespace namespaces[] =
{
	{"SOAP-ENV", "http://www.w3.org/2003/05/soap-envelope", "http://schemas.xmlsoap.org/soap/envelope/", NULL},
	{"SOAP-ENC", "http://www.w3.org/2003/05/soap-encoding", "http://schemas.xmlsoap.org/soap/encoding/", NULL},
	{"xsi", "http://www.w3.org/2001/XMLSchema-instance", "http://www.w3.org/*/XMLSchema-instance", NULL},
	{"xsd", "http://www.w3.org/2001/XMLSchema", "http://www.w3.org/*/XMLSchema", NULL},
	{"ns", "urn:v3dwebserver", NULL, NULL},
	{NULL, NULL, NULL, NULL}
};
	this->namespaces = namespaces;
};

void v3dwebserverService::destroy()
{	soap_destroy(this);
	soap_end(this);
}

v3dwebserverService *v3dwebserverService::copy()
{	v3dwebserverService *dup = SOAP_NEW_COPY(v3dwebserverService(*(struct soap*)this));
	return dup;
}

int v3dwebserverService::soap_close_socket()
{	return soap_closesock(this);
}

int v3dwebserverService::soap_senderfault(const char *string, const char *detailXML)
{	return ::soap_sender_fault(this, string, detailXML);
}

int v3dwebserverService::soap_senderfault(const char *subcodeQName, const char *string, const char *detailXML)
{	return ::soap_sender_fault_subcode(this, subcodeQName, string, detailXML);
}

int v3dwebserverService::soap_receiverfault(const char *string, const char *detailXML)
{	return ::soap_receiver_fault(this, string, detailXML);
}

int v3dwebserverService::soap_receiverfault(const char *subcodeQName, const char *string, const char *detailXML)
{	return ::soap_receiver_fault_subcode(this, subcodeQName, string, detailXML);
}

void v3dwebserverService::soap_print_fault(FILE *fd)
{	::soap_print_fault(this, fd);
}

#ifndef WITH_LEAN
void v3dwebserverService::soap_stream_fault(std::ostream& os)
{	::soap_stream_fault(this, os);
}

char *v3dwebserverService::soap_sprint_fault(char *buf, size_t len)
{	return ::soap_sprint_fault(this, buf, len);
}
#endif

void v3dwebserverService::soap_noheader()
{	header = NULL;
}

int v3dwebserverService::run(int port)
{	if (soap_valid_socket(bind(NULL, port, 100)))
	{	for (;;)
		{	if (!soap_valid_socket(accept()))
				return this->error;
			(void)serve();
			soap_destroy(this);
			soap_end(this);
		}
	}
	else
		return this->error;
	return SOAP_OK;
}

SOAP_SOCKET v3dwebserverService::bind(const char *host, int port, int backlog)
{	return soap_bind(this, host, port, backlog);
}

SOAP_SOCKET v3dwebserverService::accept()
{	return soap_accept(this);
}

int v3dwebserverService::serve()
{
#ifndef WITH_FASTCGI
	unsigned int k = this->max_keep_alive;
#endif
	do
	{	soap_begin(this);
#ifdef WITH_FASTCGI
		if (FCGI_Accept() < 0)
		{
			this->error = SOAP_EOF;
			return soap_send_fault(this);
		}
#endif

		soap_begin(this);

#ifndef WITH_FASTCGI
		if (this->max_keep_alive > 0 && !--k)
			this->keep_alive = 0;
#endif

		if (soap_begin_recv(this))
		{	if (this->error < SOAP_STOP)
			{
#ifdef WITH_FASTCGI
				soap_send_fault(this);
#else 
				return soap_send_fault(this);
#endif
			}
			soap_closesock(this);

			continue;
		}

		if (soap_envelope_begin_in(this)
		 || soap_recv_header(this)
		 || soap_body_begin_in(this)
		 || dispatch() || (this->fserveloop && this->fserveloop(this)))
		{
#ifdef WITH_FASTCGI
			soap_send_fault(this);
#else
			return soap_send_fault(this);
#endif
		}

#ifdef WITH_FASTCGI
		soap_destroy(this);
		soap_end(this);
	} while (1);
#else
	} while (this->keep_alive);
#endif
	return SOAP_OK;
}

static int serve_ns__helloworld(v3dwebserverService*);
static int serve_ns__msghandler(v3dwebserverService*);
static int serve_ns__v3dopenfile(v3dwebserverService*);

int v3dwebserverService::dispatch()
{	soap_peek_element(this);
	if (!soap_match_tag(this, this->tag, "ns:helloworld"))
		return serve_ns__helloworld(this);
	if (!soap_match_tag(this, this->tag, "ns:msghandler"))
		return serve_ns__msghandler(this);
	if (!soap_match_tag(this, this->tag, "ns:v3dopenfile"))
		return serve_ns__v3dopenfile(this);
	return this->error = SOAP_NO_METHOD;
}

static int serve_ns__helloworld(v3dwebserverService *soap)
{	struct ns__helloworld soap_tmp_ns__helloworld;
	struct ns__helloworldResponse soap_tmp_ns__helloworldResponse;
	char * soap_tmp_string;
	soap_default_ns__helloworldResponse(soap, &soap_tmp_ns__helloworldResponse);
	soap_tmp_string = NULL;
	soap_tmp_ns__helloworldResponse.response = &soap_tmp_string;
	soap_default_ns__helloworld(soap, &soap_tmp_ns__helloworld);
	soap->encodingStyle = "";
	if (!soap_get_ns__helloworld(soap, &soap_tmp_ns__helloworld, "ns:helloworld", NULL))
		return soap->error;
	if (soap_body_end_in(soap)
	 || soap_envelope_end_in(soap)
	 || soap_end_recv(soap))
		return soap->error;
	soap->error = soap->helloworld(soap_tmp_ns__helloworld.name, &soap_tmp_string);
	if (soap->error)
		return soap->error;
	soap_serializeheader(soap);
	soap_serialize_ns__helloworldResponse(soap, &soap_tmp_ns__helloworldResponse);
	if (soap_begin_count(soap))
		return soap->error;
	if (soap->mode & SOAP_IO_LENGTH)
	{	if (soap_envelope_begin_out(soap)
		 || soap_putheader(soap)
		 || soap_body_begin_out(soap)
		 || soap_put_ns__helloworldResponse(soap, &soap_tmp_ns__helloworldResponse, "ns:helloworldResponse", NULL)
		 || soap_body_end_out(soap)
		 || soap_envelope_end_out(soap))
			 return soap->error;
	};
	if (soap_end_count(soap)
	 || soap_response(soap, SOAP_OK)
	 || soap_envelope_begin_out(soap)
	 || soap_putheader(soap)
	 || soap_body_begin_out(soap)
	 || soap_put_ns__helloworldResponse(soap, &soap_tmp_ns__helloworldResponse, "ns:helloworldResponse", NULL)
	 || soap_body_end_out(soap)
	 || soap_envelope_end_out(soap)
	 || soap_end_send(soap))
		return soap->error;
	return soap_closesock(soap);
}

static int serve_ns__msghandler(v3dwebserverService *soap)
{	struct ns__msghandler soap_tmp_ns__msghandler;
	ns__LOAD_RES lr;
	lr.soap_default(soap);
	soap_default_ns__msghandler(soap, &soap_tmp_ns__msghandler);
	soap->encodingStyle = "";
	if (!soap_get_ns__msghandler(soap, &soap_tmp_ns__msghandler, "ns:msghandler", NULL))
		return soap->error;
	if (soap_body_end_in(soap)
	 || soap_envelope_end_in(soap)
	 || soap_end_recv(soap))
		return soap->error;
	soap->error = soap->msghandler(soap_tmp_ns__msghandler.lm, &lr);
	if (soap->error)
		return soap->error;
	soap_serializeheader(soap);
	lr.soap_serialize(soap);
	if (soap_begin_count(soap))
		return soap->error;
	if (soap->mode & SOAP_IO_LENGTH)
	{	if (soap_envelope_begin_out(soap)
		 || soap_putheader(soap)
		 || soap_body_begin_out(soap)
		 || lr.soap_put(soap, "ns:LOAD-RES", "")
		 || soap_body_end_out(soap)
		 || soap_envelope_end_out(soap))
			 return soap->error;
	};
	if (soap_end_count(soap)
	 || soap_response(soap, SOAP_OK)
	 || soap_envelope_begin_out(soap)
	 || soap_putheader(soap)
	 || soap_body_begin_out(soap)
	 || lr.soap_put(soap, "ns:LOAD-RES", "")
	 || soap_body_end_out(soap)
	 || soap_envelope_end_out(soap)
	 || soap_end_send(soap))
		return soap->error;
	return soap_closesock(soap);
}

static int serve_ns__v3dopenfile(v3dwebserverService *soap)
{	struct ns__v3dopenfile soap_tmp_ns__v3dopenfile;
	struct ns__v3dopenfileResponse soap_tmp_ns__v3dopenfileResponse;
	char * soap_tmp_string;
	soap_default_ns__v3dopenfileResponse(soap, &soap_tmp_ns__v3dopenfileResponse);
	soap_tmp_string = NULL;
	soap_tmp_ns__v3dopenfileResponse.v3dfn = &soap_tmp_string;
	soap_default_ns__v3dopenfile(soap, &soap_tmp_ns__v3dopenfile);
	soap->encodingStyle = "";
	if (!soap_get_ns__v3dopenfile(soap, &soap_tmp_ns__v3dopenfile, "ns:v3dopenfile", NULL))
		return soap->error;
	if (soap_body_end_in(soap)
	 || soap_envelope_end_in(soap)
	 || soap_end_recv(soap))
		return soap->error;
	soap->error = soap->v3dopenfile(soap_tmp_ns__v3dopenfile.fn, &soap_tmp_string);
	if (soap->error)
		return soap->error;
	soap_serializeheader(soap);
	soap_serialize_ns__v3dopenfileResponse(soap, &soap_tmp_ns__v3dopenfileResponse);
	if (soap_begin_count(soap))
		return soap->error;
	if (soap->mode & SOAP_IO_LENGTH)
	{	if (soap_envelope_begin_out(soap)
		 || soap_putheader(soap)
		 || soap_body_begin_out(soap)
		 || soap_put_ns__v3dopenfileResponse(soap, &soap_tmp_ns__v3dopenfileResponse, "ns:v3dopenfileResponse", NULL)
		 || soap_body_end_out(soap)
		 || soap_envelope_end_out(soap))
			 return soap->error;
	};
	if (soap_end_count(soap)
	 || soap_response(soap, SOAP_OK)
	 || soap_envelope_begin_out(soap)
	 || soap_putheader(soap)
	 || soap_body_begin_out(soap)
	 || soap_put_ns__v3dopenfileResponse(soap, &soap_tmp_ns__v3dopenfileResponse, "ns:v3dopenfileResponse", NULL)
	 || soap_body_end_out(soap)
	 || soap_envelope_end_out(soap)
	 || soap_end_send(soap))
		return soap->error;
	return soap_closesock(soap);
}
/* End of server object code */
